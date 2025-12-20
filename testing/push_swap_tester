#!/bin/bash


EXEC="./push_swap"
CHECKER="./checker_linux"

GREEN="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m" # No color
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
LIGHT_BLUE="\033[0;36m"    # Light Blue color
WHITE="\033[0;37m"
MAGENTA="\033[0;35m"
TIMEOUT=10
HARDMODE=0

if [ "$1" == "hardmode" ]; then
  TIMEOUT=3
  HARDMODE=1
  echo -e "${RED}Hardmode Activated!${NC}"
fi
if [ $HARDMODE == 1 ]; then
  echo -e "${RED}"
else
  echo -e "${GREEN}"
fi

cat << "EOF"
,------.       ,---.      ,--------.,------. ,---. ,--------.,------.,------.   
|  .--. '     '   .-'     '--.  .--'|  .---''   .-''--.  .--'|  .---'|  .--. ' 
|  '--' |     `.  `-.        |  |   |  `--, `.  `-.   |  |   |  `--, |  '--'.'
|  | --',----..-'    |       |  |   |  `---..-'    |  |  |   |  `---.|  |\  \
`--'    '----'`-----'        `--'   `------'`-----'   `--'   `------'`--' '--'  
EOF

# Reset color to default
echo -e "${NC}"
declare -a TEST_CASES_FOR_3=(
  "3 2 1"
  "-1 5 4"
  "0 1 3"
  "-1 -2 -3"
  "10 20 30"
  "20 10 30"
)

declare -a TEST_CASES_FOR_5=(
  "-1 7 2 3 1"
  "0 -2 10 100 200"
  "9 10 20 -30 29"
  "5 4 3 2 1"
  "-100 -200 -300 -400"
)

declare -a TEST_CASES_ERRORS_HARDMODE=(
  "0 7 2 3 0"
  "10 2147483648"
  "10 -2147483649"
  "10 -9223372036854775807"
  "10 9223372036854775807"
  "10 18446744073709551615"
  "2147483648"
  "-2147483649"
  "-9223372036854775807"
  "9223372036854775807"
  "18446744073709551615"
)

declare -a TEST_EDGE_CASES_HARDMODE=(
  "74 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 1 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100"
  "100 99 98 97 96 95 94 93 92 91 90 89 88 87 86 85 84 83 82 81 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 61 60 59 58 57 56 55 54 53 52 51 50 49 48 47 46 45 44 43 42 41 40 39 38 37 36 35 34 33 32 31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1"
  "421590157 -1104191235 1142941718 408146127 225631969 1316658270 -314107883 -1572231770 659491478 -2021161237 758406146 1323949103 -1161915107 1109824899 222470059 1177289130 -2009713710 -982654464 -205620995 1639262541 -5020555 19720963 -180517873 1362232926 684387701 2146366109 -2001486488 1818650777 -337674198 -1429223839 -1437848738 1992368462 515943104 -73686841 852524443 -1124642510 1431481246 -1630918197 866961434 -2128800018 251238823 -1273973979 -1814130681 1926083268 -503376019 1942823965 1792071328 1207876180 -1913443590 1730977262 -1913651403 222631807 -1989798802 1267042719 359268784 346992494 1371655438 562900909 -627407311 -1062988831 1671343635 764830606 -1817273556 -299325092 988600963 -1162858317 -645611591 1605149228 1461248902 1401168375 -846344305 1603065649 978479746 1215852936 -1780360934 -362515894 1940376543 73414256 -275153424 -29834184 800857174 -1331113241 -856082055 -694154453 1834573014 1216565561 -1880819319 1771105967 1192918531 528675457 1663165654 1034313678 -960743073 761268827 55056780 1043307172 -1363999178 -1399540633 -358104530 -770960135"
)

generate_random_test_cases() {
  local size=$1
  shuf -i 1-$size -n $size | tr '\n' ' '
}

test_cases_for_100=$(generate_random_test_cases 100) #this gives us 100 random numbers;
test_cases_for_500=$(generate_random_test_cases 500) #and this 500 random numbers;

# function to print operations and check if the operations are within the expected range
print_operations() {
  local INSTRUCTIONS=$1
  local words_len=$2

  LEVEL_A=0
  LEVEL_B=700
  LEVEL_C=1500

  if [ "$words_len" -eq 3 ]; then
    LEVEL_B=3
    LEVEL_C=4
  elif [ "$words_len" -eq 5 ]; then
    LEVEL_B=7
    LEVEL_C=13
  elif [ "$words_len" -eq 500 ]; then
    LEVEL_B=7000
    LEVEL_C=11500
  fi
  OPERATIONS=$(wc -l <<< "$INSTRUCTIONS")
  if (( "$OPERATIONS" < LEVEL_B && "$OPERATIONS" >= LEVEL_A )); then
    echo -e "${GREEN}Operations: $OPERATIONS${NC}"
  elif (( "$OPERATIONS" >= LEVEL_B && "$OPERATIONS" < LEVEL_C )); then
    echo -e "${YELLOW}Operations: $OPERATIONS${NC}"
  else
    echo -e "${RED}Operations: $OPERATIONS${NC}"
  fi
}

test_case() {
  local array=$1

  INSTRUCTIONS=$(timeout $TIMEOUT "$EXEC" "$array")
  if [ "$?" -eq 124 ]; then
    echo -e "${RED}TIMEOUT: KO!${NC}"
    return;
  fi
  if [ -z "$INSTRUCTIONS" ]; then
    CHECKER_OUTPUT=$($CHECKER $array < "/dev/null")
  else
    CHECKER_OUTPUT=$($CHECKER $array <<< $INSTRUCTIONS)
  fi
  echo -e "test case : $array"
  print_operations "$INSTRUCTIONS" $(wc -w <<< $array)
  if [ "$CHECKER_OUTPUT" == "OK" ]; then
    echo -e "${GREEN}sorted Correctly! OK!!!${NC}"
  else
    echo -e "${RED}KO!${NC}"
  fi

}

test_case_errors() {
  local array=$1
  if [ ! -f "$EXEC" ]; then
    echo -e "${RED}Executable not found! -> make sure to (make)${NC}";
    return
  fi

  echo -e "test case : $array"
  OUTPUT=$(timeout $TIMEOUT "$EXEC" "$array" 2>&1)
  if [ "$?" -eq 124 ]; then
    echo -e "${RED}TIMEOUT: KO!${NC}"
    return;
  fi
  if [ "$OUTPUT" == "Error" ]; then
    echo -e "${GREEN}Error as expected.${NC}"
  else
    echo -e "${RED}KO, Expected Error!${NC}"
  fi
}

check_executables() {
  if [ ! -f "$EXEC" ]; then
    echo -e "${RED}Executable not found! -> make sure to (make)${NC}";
    exit 1
  fi
  if [ ! -f $CHECKER ]; then
    echo -e "${RED}Executable 'checker' not found! -> make sure it exists or check permissions!${NC}"
    exit 1
  fi
  if [ ! -x "$EXEC" ]; then
    echo -e "${RED}Executable doesn't have execute permissions! -> chmod!${NC}";
    exit 1
  fi
  if [ ! -x $CHECKER ]; then
    echo -e "${RED}Executable 'checker' doesn't have execute permissions! -> chmod!${NC}"
    exit 1
  fi
}

check_executables

echo -e "${YELLOW}=== Testing Arrays of Size 3 ===${NC}"
for case in "${TEST_CASES_FOR_3[@]}"; do
  test_case "$case"
done

echo -e "${YELLOW}=== Testing Arrays of Size 5 ===${NC}"
for case in "${TEST_CASES_FOR_5[@]}"; do
  test_case "$case"
done

echo -e "${LIGHT_BLUE}=== Testing Arrays of Size 100 ===${NC}"
for case in "${test_cases_for_100[@]}"; do
  test_case "$case"
done

echo -e "${LIGHT_BLUE}=== Testing Arrays of Size 500 ===${NC}"
for case in "${test_cases_for_500[@]}"; do
  test_case "$case"
done

if [ "$HARDMODE" == 1 ]; then
  echo -e "${RED}=== Hardmode Cases ===${NC}"
  echo -e "${RED}=== Testing Overflow/Duplicates Cases ===${NC}"
  for case in "${TEST_CASES_ERRORS_HARDMODE[@]}"; do
    test_case_errors "$case"
  done
  echo -e "${RED}=== Testing Edge Cases ===${NC}"
  for case in "${TEST_EDGE_CASES_HARDMODE[@]}"; do
    test_case "$case"
  done
fi

echo -e  "\n"
echo -e "${MAGENTA}made by msalim & amsaleh -> DM Us for any feedback , Good luck with your Projects! \U1F49C ${NC}"

