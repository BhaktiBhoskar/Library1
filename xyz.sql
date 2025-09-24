CREATE OR REPLACE TRIGGER ABC 
BEFORE UPDATE OR DELETE ON clientmaster
for each row
BEGIN
INSERT INTO audit_log(srno, name)
VALUES (:OLD.srno, :OLD.name);
END;

/


  
create or replace trigger errortrigger
before delete or update on auditt
begin
if rtrim(upper(To_char(sysdate,'day')))='WEDNESDAY' then
RAISE_APPLICATION_ERROR(-200000,'cannot perform delete or upadte operation');
end if;
end;
/
