-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

UPDATE
	"testparams" t
SET
	"1p" = :p
WHERE
	t."1p" = 1

