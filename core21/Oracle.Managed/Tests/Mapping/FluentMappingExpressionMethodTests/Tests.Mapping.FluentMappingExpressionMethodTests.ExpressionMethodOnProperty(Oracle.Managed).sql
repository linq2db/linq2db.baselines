﻿BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE InstanceClass
(
	Id    Int NOT NULL,
	Value Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO InstanceClass (Id, Value) VALUES (1,101)
	INTO InstanceClass (Id, Value) VALUES (2,102)
	INTO InstanceClass (Id, Value) VALUES (3,103)
	INTO InstanceClass (Id, Value) VALUES (4,104)
	INTO InstanceClass (Id, Value) VALUES (5,105)
	INTO InstanceClass (Id, Value) VALUES (6,106)
	INTO InstanceClass (Id, Value) VALUES (7,107)
	INTO InstanceClass (Id, Value) VALUES (8,108)
	INTO InstanceClass (Id, Value) VALUES (9,109)
	INTO InstanceClass (Id, Value) VALUES (10,110)
	INTO InstanceClass (Id, Value) VALUES (11,111)
	INTO InstanceClass (Id, Value) VALUES (12,112)
	INTO InstanceClass (Id, Value) VALUES (13,113)
	INTO InstanceClass (Id, Value) VALUES (14,114)
	INTO InstanceClass (Id, Value) VALUES (15,115)
	INTO InstanceClass (Id, Value) VALUES (16,116)
	INTO InstanceClass (Id, Value) VALUES (17,117)
	INTO InstanceClass (Id, Value) VALUES (18,118)
	INTO InstanceClass (Id, Value) VALUES (19,119)
	INTO InstanceClass (Id, Value) VALUES (20,120)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	Count(*)
FROM
	InstanceClass t
WHERE
	Cast(t.Id as VarChar2(11)) || Cast(t.Value as VarChar2(11)) = Cast(t.Id as VarChar2(11)) || Cast(t.Value as VarChar(11))

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE InstanceClass

