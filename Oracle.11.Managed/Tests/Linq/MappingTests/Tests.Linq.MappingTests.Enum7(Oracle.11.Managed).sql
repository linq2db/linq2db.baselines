-- Oracle.11.Managed Oracle11
DECLARE @v1 Int32
SET     @v1 = 1

UPDATE
	"Parent" p
SET
	"Value1" = :v1
WHERE
	p."Value1" = :v1

