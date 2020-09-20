BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE i1084_person
(
	Id            Int NOT NULL,
	"Number"      Int NOT NULL,
	StatusBitmask Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE i1084_student
(
	Id            Int           NOT NULL,
	"Number"      NVarChar(255)     NULL,
	StatusBitmask Int           NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	k_1.StatusBitmask,
	joinedTable.StatusBitmask
FROM
	i1084_person k_1
		LEFT JOIN i1084_student joinedTable ON (k_1.Id = joinedTable.Id AND To_Char(k_1."Number") = joinedTable."Number")

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE i1084_student

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE i1084_person

