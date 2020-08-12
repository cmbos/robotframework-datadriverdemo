*** Settings ***
Library  Collections
Library  String
Library  OperatingSystem

*** Test Cases ***
Voorbeeld testcase met lelijke for-loop
    # Inlezen CSV bestand
    ${csv_bestand}  get file  ${EXEC_DIR}/Data/login.csv
    # Omzetten string naar regels
    @{rijen}  split to lines  ${csv_bestand}
    FOR  ${rij}  IN  @{rijen}
        @{kolommen}  split string  ${rij}  ;
        log list  ${kolommen}
    END