BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p_p Int32
SET     @p_p = 2

UPDATE
	"testparams" t
SET
	"p_p" = :p_p
WHERE
	t."p_p" = 1

