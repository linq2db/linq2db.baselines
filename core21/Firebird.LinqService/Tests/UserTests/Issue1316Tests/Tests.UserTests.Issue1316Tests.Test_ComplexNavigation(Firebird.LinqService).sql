﻿BeforeExecute
-- Firebird

CREATE TABLE "Issue1316Tests"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_Issue1316Tests" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 5

SELECT FIRST @take
	"t1".ID
FROM
	"Issue1316Tests" "t1"
WHERE
	"t1".ID = @ID_1

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 5

SELECT FIRST @take
	"t1".ID
FROM
	"Issue1316Tests" "t1"
WHERE
	"t1".ID = @Id_1

BeforeExecute
-- Firebird

DROP TABLE "Issue1316Tests"

