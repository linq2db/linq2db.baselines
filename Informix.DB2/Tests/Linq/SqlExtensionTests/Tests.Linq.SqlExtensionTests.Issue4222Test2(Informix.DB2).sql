BeforeExecute
-- Informix.DB2 Informix

SELECT
	e.Id,
	e.RecSrc,
	e."Value"
FROM
	"Entry" e
WHERE
	ROW (e.RecSrc, e."Value") IN (ROW ('default', 2007), ROW ('other', 2008))

