BeforeExecute
-- Firebird

CREATE TABLE "SelectExpressionTable"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_SelectExpressionTable" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird

INSERT INTO "SelectExpressionTable"
(
	ID
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	1
FROM
	"SelectExpressionTable" "t1"

BeforeExecute
-- Firebird

DROP TABLE "SelectExpressionTable"

