﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id"
FROM
	"TransactionLine" "t1"
WHERE
	"t1"."Id" = 2
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id"
FROM
	"TransactionLine" "t1"
WHERE
	"t1"."Id" = 2
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserId Integer -- Int32
SET     @UserId = 2

SELECT
	"x"."Id"
FROM
	"TransactionLine" "x"
WHERE
	"x"."Id" = @UserId
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserId Integer -- Int32
SET     @UserId = 2

SELECT
	"x"."Id"
FROM
	"TransactionLine" "x"
WHERE
	"x"."Id" = @UserId
FETCH NEXT 2 ROWS ONLY

