BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table1
(
	Field3 Int NOT NULL,
	Field5 Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table2
(
	Field6 Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table3

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table3
(
	Field6 Int     NULL,
	Field3 Int NOT NULL,
	Field4 Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table7

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table7
(
	Field4 Int           NOT NULL,
	Field8 NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Field6
FROM
	Table2 t1
		LEFT JOIN Table3 a_Ref3 ON t1.Field6 = a_Ref3.Field6 OR t1.Field6 IS NULL AND a_Ref3.Field6 IS NULL
		LEFT JOIN Table1 a_Ref4 ON a_Ref3.Field3 = a_Ref4.Field3
		LEFT JOIN Table1 a_Ref1 ON a_Ref4.Field5 = a_Ref1.Field3
		LEFT JOIN Table7 a_Ref5 ON a_Ref3.Field4 = a_Ref5.Field4
		INNER JOIN Table3 t2
			LEFT JOIN Table7 a_Ref5_1 ON t2.Field4 = a_Ref5_1.Field4
			INNER JOIN Table2 t4 ON t2.Field6 = t4.Field6 OR t2.Field6 IS NULL AND t4.Field6 IS NULL
		ON a_Ref1.Field3 = t2.Field3 AND (a_Ref5.Field4 = a_Ref5_1.Field4 OR a_Ref5.Field4 IS NULL AND a_Ref5_1.Field4 IS NULL) AND (a_Ref5.Field8 = a_Ref5_1.Field8 OR a_Ref5.Field8 IS NULL AND a_Ref5_1.Field8 IS NULL)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table7

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table3

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1

