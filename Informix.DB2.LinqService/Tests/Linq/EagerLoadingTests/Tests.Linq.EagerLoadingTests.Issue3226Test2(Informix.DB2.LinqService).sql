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
	m_1.Id,
	d."Value"
FROM
	"Item" m_1
		INNER JOIN ItemValue d ON m_1.Id = d.ItemId

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.Text
FROM
	"Item" x

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ItemValue

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Item"

