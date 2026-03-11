-- Informix.DB2 Informix

SELECT
	e.Id,
	e.RecSrc,
	e."Value"
FROM
	"Entry" e
WHERE
	ROW (e.RecSrc, e."Value") = ROW ('default', 2007)

