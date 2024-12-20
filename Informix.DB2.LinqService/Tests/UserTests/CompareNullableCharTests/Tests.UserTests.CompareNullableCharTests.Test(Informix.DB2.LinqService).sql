BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table1
(
	Field1 SERIAL    NOT NULL,
	Foeld2 NChar(1)      NULL,

	PRIMARY KEY (Field1)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	current_1.Field1,
	previous.Field1
FROM
	Table1 current_1,
	Table1 previous
WHERE
	current_1.Foeld2 = previous.Foeld2 OR current_1.Foeld2 IS NULL AND previous.Foeld2 IS NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table1

