﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "SampleClass"
		(
			"Id"     Int          NOT NULL,
			"Value1" VarChar(50)      NULL,
			"Value2" VarChar(50)      NULL,
			"Value3" VarChar(50)      NULL,
			"Value4" VarChar2(50)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value1 Varchar2(2) -- String
SET     @Value1 = 'V1'
DECLARE @Value2 Varchar2(2) -- String
SET     @Value2 = 'V2'
DECLARE @Value3 Varchar2 -- String
SET     @Value3 = NULL
DECLARE @Value4 NVarchar2(2) -- String
SET     @Value4 = 'V4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value3,
	:Value4
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value1 Varchar2 -- String
SET     @Value1 = NULL
DECLARE @Value2 Varchar2(2) -- String
SET     @Value2 = 'Z2'
DECLARE @Value3 Varchar2 -- String
SET     @Value3 = NULL
DECLARE @Value4 NVarchar2 -- String
SET     @Value4 = NULL

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value3,
	:Value4
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value1 Varchar2(2) -- String
SET     @Value1 = 'Z1'
DECLARE @Value2 Varchar2 -- String
SET     @Value2 = NULL
DECLARE @Value3 Varchar2 -- String
SET     @Value3 = NULL
DECLARE @Value4 NVarchar2(2) -- String
SET     @Value4 = 'Z4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value3,
	:Value4
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @separator Varchar2(4) -- String
SET     @separator = ' -> '

SELECT
	LISTAGG(t1."Value4", :separator) WITHIN GROUP (ORDER BY t1."Value3" DESC, t1."Value4")
FROM
	"SampleClass" t1
GROUP BY
	t1."Id",
	t1."Value4"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

