﻿BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE i1084_person
(
	Id            Int NOT NULL,
	"Number"      Int NOT NULL,
	StatusBitmask Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO i1084_person (Id, "Number", StatusBitmask) VALUES (1,1,0)
	INTO i1084_person (Id, "Number", StatusBitmask) VALUES (2,2,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE i1084_student
(
	Id            Int          NOT NULL,
	"Number"      VarChar(255)     NULL,
	StatusBitmask Int          NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO i1084_student (Id, "Number", StatusBitmask) VALUES (1,'1',0)
	INTO i1084_student (Id, "Number", StatusBitmask) VALUES (2,'2',0)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	k_1.Id,
	k_1."Number",
	k_1.StatusBitmask,
	joinedTable.StatusBitmask
FROM
	i1084_person k_1
		LEFT JOIN i1084_student joinedTable ON (k_1.Id = joinedTable.Id AND Cast(k_1."Number" as VarChar2(11)) = joinedTable."Number")

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE i1084_student

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE i1084_person

