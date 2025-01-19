BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r.ID,
	r."Bool"
FROM
	"NullableBool" r
WHERE
	r."Bool" = 1 OR r."Bool" IS NULL

