﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "aa"
(
	"bb" Int            NOT NULL,
	"cc" VarChar2(4000)     NULL,

	CONSTRAINT "PK_aa" PRIMARY KEY ("bb")
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @bb Int32
SET     @bb = 99
DECLARE @cc NVarchar2(5) -- String
SET     @cc = 'hallo'

INSERT INTO "aa"
(
	"bb",
	"cc"
)
VALUES
(
	:bb,
	:cc
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."bb",
	t1."cc"
FROM
	"aa" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "aa"

