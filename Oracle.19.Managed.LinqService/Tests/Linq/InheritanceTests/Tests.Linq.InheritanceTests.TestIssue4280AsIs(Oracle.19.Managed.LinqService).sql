BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4280"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4280"
		(
			"Id"           Int          NOT NULL,
			"SerialNumber" VarChar(255)     NULL,
			"DeviceType"   VarChar(255)     NULL,
			"Location"     VarChar(255)     NULL,

			CONSTRAINT "PK_Issue4280" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @SerialNumber Varchar2(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType Varchar2(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location Varchar2(9) -- String
SET     @Location = 'Something'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType",
	"Location"
)
VALUES
(
	:Id,
	:SerialNumber,
	:DeviceType,
	:Location
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SerialNumber Varchar2(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType Varchar2(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType"
)
VALUES
(
	:Id,
	:SerialNumber,
	:DeviceType
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t1."DeviceType" = 'TV' THEN 1
		ELSE 0
	END,
	t1."Id",
	t1."SerialNumber",
	t1."DeviceType",
	t1."Location",
	CASE
		WHEN t1."DeviceType" = 'DISPLAY' THEN 1
		ELSE 0
	END
FROM
	"Issue4280" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @SerialNumber Varchar2(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType Varchar2(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location Varchar2(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	"Issue4280" t1
SET
	"SerialNumber" = :SerialNumber,
	"DeviceType" = :DeviceType,
	"Location" = :Location
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @SerialNumber Varchar2(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType Varchar2(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"Issue4280" t1
SET
	"SerialNumber" = :SerialNumber,
	"DeviceType" = :DeviceType
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t1."DeviceType" = 'TV' THEN 1
		ELSE 0
	END,
	t1."Id",
	t1."SerialNumber",
	t1."DeviceType",
	t1."Location",
	CASE
		WHEN t1."DeviceType" = 'DISPLAY' THEN 1
		ELSE 0
	END
FROM
	"Issue4280" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4280"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

