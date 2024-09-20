SET SERVEROUTPUT ON;

DECLARE
    tabubada NUMBER :=&digiteUmValor;
BEGIN
    FOR x IN 1..10 LOOP
        dbms_output.put_line(x*tabubada);
    END LOOP;
END;