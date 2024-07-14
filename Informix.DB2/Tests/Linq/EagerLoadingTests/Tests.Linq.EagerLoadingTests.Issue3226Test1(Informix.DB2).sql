BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Item"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Item"
(
	Id   Int           NOT NULL,
	Text NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ItemValue

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ItemValue
(
	Id      Int     NOT NULL,
	ItemId  Int     NOT NULL,
	"Value" Decimal NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Text
FROM
	(
		SELECT
			x.Id,
			x.Text,
			(
				SELECT
					SUM(a_Values."Value")
				FROM
					ItemValue a_Values
				WHERE
					x.Id = a_Values.ItemId
			) as SUM_1
		FROM
			"Item" x
	) t1
ORDER BY
	t1.SUM_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ItemValue

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Item"

