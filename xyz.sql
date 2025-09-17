CREATE OR REPLACE TRIGGER ABC 
BEFORE UPDATE OR DELETE ON clientmaster
for each row
BEGIN
INSERT INTO audit_log(srno, name)
VALUES (:OLD.srno, :OLD.name);
END;
/