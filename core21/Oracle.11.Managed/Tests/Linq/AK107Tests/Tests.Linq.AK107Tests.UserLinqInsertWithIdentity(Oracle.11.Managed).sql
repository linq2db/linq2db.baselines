﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "t_test_user"
(
	"user_id",
	"name"
)
VALUES
(
	"sequence_schema"."sq_test_user".nextval,
	'user'
)
RETURNING 
	"user_id" INTO :IDENTITY_PARAMETER

