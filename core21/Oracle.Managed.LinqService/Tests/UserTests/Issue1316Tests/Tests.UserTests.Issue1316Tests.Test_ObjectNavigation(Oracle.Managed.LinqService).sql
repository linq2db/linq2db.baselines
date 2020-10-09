BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Issue1316Tests
(
	ID Int NOT NULL,

	CONSTRAINT PK_Issue1316Tests PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO Issue1316Tests
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id_1 Int32
SET     @Id_1 = 5
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID = :Id_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Issue1316Tests

