﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE i1084_person
(
	Id            Int NOT NULL,
	"Number"      Int NOT NULL,
	StatusBitmask Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE i1084_student
(
	Id            Int          NOT NULL,
	"Number"      VarChar(255)     NULL,
	StatusBitmask Int          NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	k_1.StatusBitmask,
	joinedTable.StatusBitmask
FROM
	i1084_person k_1
		LEFT JOIN i1084_student joinedTable ON (k_1.Id = joinedTable.Id AND Cast(k_1."Number" as VarChar2(11)) = joinedTable."Number")

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE i1084_student

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE i1084_person

