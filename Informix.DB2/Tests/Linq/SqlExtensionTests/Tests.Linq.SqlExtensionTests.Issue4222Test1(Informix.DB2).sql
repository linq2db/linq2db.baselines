BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Entry"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Entry"
(
	Id      VARCHAR(36)   NOT NULL,
	RecSrc  NVarChar(255)     NULL,
	"Value" Int           NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	e.Id,
	e.RecSrc,
	e."Value"
FROM
	"Entry" e
WHERE
	ROW (e.RecSrc, e."Value") = ROW ('default', 2007)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Entry"

