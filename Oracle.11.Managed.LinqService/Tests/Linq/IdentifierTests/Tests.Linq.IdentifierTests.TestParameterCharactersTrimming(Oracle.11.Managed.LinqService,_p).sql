BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 2

UPDATE
	"testparams" t
SET
	"_p" = :p
WHERE
	t."_p" = 1

