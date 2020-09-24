BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE ValueItem
(
	Value Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO ValueItem
(
	Value
)
VALUES
(
	123
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	row_1.Value
FROM
	ValueItem row_1

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE ValueItem

