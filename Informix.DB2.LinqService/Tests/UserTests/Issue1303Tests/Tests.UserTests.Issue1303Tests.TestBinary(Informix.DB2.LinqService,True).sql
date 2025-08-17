BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @value VarBinary(3) -- Binary
SET     @value = {1,2,3}
DECLARE @value_1 VarBinary(2) -- Binary
SET     @value_1 = {4,5}

INSERT INTO Issue1303
(
	ID,
	"Array",
	"Binary"
)
VALUES
(
	1,
	@value,
	@value_1
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	t1.ID,
	t1."Array",
	t1."Binary"
FROM
	Issue1303 t1
WHERE
	t1.ID = 1

