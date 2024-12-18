BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS i1084_person

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS i1084_person
(
	Id            Int NOT NULL,
	"Number"      Int NOT NULL,
	StatusBitmask Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS i1084_student

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS i1084_student
(
	Id            Int           NOT NULL,
	"Number"      NVarChar(255)     NULL,
	StatusBitmask Int           NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	BitAnd(k_1.StatusBitmask, 128),
	BitAnd(g_1.StatusBitmask, 128)
FROM
	i1084_person k_1
		LEFT JOIN i1084_student g_1 ON k_1.Id = g_1.Id AND To_Char(k_1."Number") = g_1."Number" AND g_1."Number" IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS i1084_student

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS i1084_person

