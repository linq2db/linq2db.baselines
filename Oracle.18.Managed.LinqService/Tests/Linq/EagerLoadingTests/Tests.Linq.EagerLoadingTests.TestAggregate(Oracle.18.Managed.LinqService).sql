BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "MasterClass"';
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
		CREATE TABLE "MasterClass"
		(
			"Id1"        Int          NOT NULL,
			"Id2"        Int          NOT NULL,
			"Value"      VarChar(255)     NULL,
			"ByteValues" BLOB             NULL,

			CONSTRAINT "PK_MasterClass" PRIMARY KEY ("Id1", "Id2")
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
DECLARE @Id1 Int32
SET     @Id1 = 1
DECLARE @Id2 Int32
SET     @Id2 = 1
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'Str1'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 2
DECLARE @Id2 Int32
SET     @Id2 = 2
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'Str2'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 3
DECLARE @Id2 Int32
SET     @Id2 = 3
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'Str3'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 4
DECLARE @Id2 Int32
SET     @Id2 = 4
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'Str4'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 5
DECLARE @Id2 Int32
SET     @Id2 = 5
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'Str5'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 6
DECLARE @Id2 Int32
SET     @Id2 = 6
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'Str6'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 7
DECLARE @Id2 Int32
SET     @Id2 = 7
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'Str7'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 8
DECLARE @Id2 Int32
SET     @Id2 = 8
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'Str8'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 9
DECLARE @Id2 Int32
SET     @Id2 = 9
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'Str9'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 10
DECLARE @Id2 Int32
SET     @Id2 = 10
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str10'
DECLARE @ByteValues Blob -- Object
SET     @ByteValues = NULL

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
VALUES
(
	:Id1,
	:Id2,
	:Value,
	:ByteValues
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DetailClass"';
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
		CREATE TABLE "DetailClass"
		(
			"DetailId"    Int          NOT NULL,
			"MasterId"    Int              NULL,
			"DetailValue" VarChar(255)     NULL,

			CONSTRAINT "PK_DetailClass" PRIMARY KEY ("DetailId")
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
DECLARE @DetailId Int32
SET     @DetailId = 1001
DECLARE @MasterId Int32
SET     @MasterId = 1
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue10001'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 3001
DECLARE @MasterId Int32
SET     @MasterId = 3
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue30001'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 3002
DECLARE @MasterId Int32
SET     @MasterId = 3
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue30002'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 3003
DECLARE @MasterId Int32
SET     @MasterId = 3
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue30003'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 5001
DECLARE @MasterId Int32
SET     @MasterId = 5
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue50001'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 5002
DECLARE @MasterId Int32
SET     @MasterId = 5
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue50002'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 5003
DECLARE @MasterId Int32
SET     @MasterId = 5
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue50003'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 5004
DECLARE @MasterId Int32
SET     @MasterId = 5
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue50004'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 5005
DECLARE @MasterId Int32
SET     @MasterId = 5
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue50005'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 7001
DECLARE @MasterId Int32
SET     @MasterId = 7
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue70001'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 7002
DECLARE @MasterId Int32
SET     @MasterId = 7
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue70002'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 7003
DECLARE @MasterId Int32
SET     @MasterId = 7
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue70003'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 7004
DECLARE @MasterId Int32
SET     @MasterId = 7
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue70004'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 7005
DECLARE @MasterId Int32
SET     @MasterId = 7
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue70005'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 7006
DECLARE @MasterId Int32
SET     @MasterId = 7
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue70006'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 7007
DECLARE @MasterId Int32
SET     @MasterId = 7
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue70007'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 9001
DECLARE @MasterId Int32
SET     @MasterId = 9
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue90001'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 9002
DECLARE @MasterId Int32
SET     @MasterId = 9
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue90002'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 9003
DECLARE @MasterId Int32
SET     @MasterId = 9
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue90003'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 9004
DECLARE @MasterId Int32
SET     @MasterId = 9
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue90004'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 9005
DECLARE @MasterId Int32
SET     @MasterId = 9
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue90005'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 9006
DECLARE @MasterId Int32
SET     @MasterId = 9
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue90006'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 9007
DECLARE @MasterId Int32
SET     @MasterId = 9
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue90007'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 9008
DECLARE @MasterId Int32
SET     @MasterId = 9
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue90008'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @DetailId Int32
SET     @DetailId = 9009
DECLARE @MasterId Int32
SET     @MasterId = 9
DECLARE @DetailValue Varchar2(16) -- String
SET     @DetailValue = 'DetailValue90009'

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
VALUES
(
	:DetailId,
	:MasterId,
	:DetailValue
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t3.SUM_1,
	t6.COUNT_1
FROM
	"MasterClass" m_1
		OUTER APPLY (
			SELECT
				SUM(t2."DetailId") as SUM_1
			FROM
				(
					SELECT
						t1."DetailId"
					FROM
						(
							SELECT DISTINCT
								a_Details."DetailId"
							FROM
								"DetailClass" a_Details
							WHERE
								m_1."Id1" = a_Details."MasterId" AND a_Details."MasterId" IS NOT NULL
						) t1
					ORDER BY
						t1."DetailId"
					OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY 
				) t2
		) t3
		OUTER APPLY (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT
						*
					FROM
						(
							SELECT DISTINCT
								a_Details_1."DetailValue"
							FROM
								"DetailClass" a_Details_1
							WHERE
								m_1."Id1" = a_Details_1."MasterId" AND a_Details_1."MasterId" IS NOT NULL
						) t4
					ORDER BY
						t4."DetailValue"
					OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
				) t5
		) t6

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id1",
	d."DetailId",
	d."MasterId",
	d."DetailValue"
FROM
	(
		SELECT DISTINCT
			t1."Id1"
		FROM
			"MasterClass" t1
	) m_1
		INNER JOIN "DetailClass" d ON m_1."Id1" = d."MasterId" AND d."MasterId" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id1",
	t1."Id2",
	t1."Value",
	t1."ByteValues"
FROM
	"MasterClass" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DetailClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "MasterClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

