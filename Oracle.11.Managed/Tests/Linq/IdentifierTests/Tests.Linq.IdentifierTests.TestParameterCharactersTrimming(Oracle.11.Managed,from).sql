-- Oracle.11.Managed Oracle11
DECLARE @from_1 Int32
SET     @from_1 = 2

UPDATE
	"testparams" t
SET
	"from" = :from_1
WHERE
	t."from" = 1

