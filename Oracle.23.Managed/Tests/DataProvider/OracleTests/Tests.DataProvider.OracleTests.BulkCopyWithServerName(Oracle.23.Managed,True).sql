BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO BULKCOPYTABLE@"free" (ID) VALUES (1)
	INTO BULKCOPYTABLE@"free" (ID) VALUES (2)
	INTO BULKCOPYTABLE@"free" (ID) VALUES (3)
	INTO BULKCOPYTABLE@"free" (ID) VALUES (4)
	INTO BULKCOPYTABLE@"free" (ID) VALUES (5)
	INTO BULKCOPYTABLE@"free" (ID) VALUES (6)
	INTO BULKCOPYTABLE@"free" (ID) VALUES (7)
	INTO BULKCOPYTABLE@"free" (ID) VALUES (8)
	INTO BULKCOPYTABLE@"free" (ID) VALUES (9)
	INTO BULKCOPYTABLE@"free" (ID) VALUES (10)
SELECT * FROM dual

