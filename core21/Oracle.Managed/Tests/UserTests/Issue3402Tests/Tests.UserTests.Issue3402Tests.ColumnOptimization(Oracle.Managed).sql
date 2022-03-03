BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE VEMPLOYEE_SCH_SEC
(
	ACTIVE Char(1)      NOT NULL,
	ID     Int          NOT NULL,
	NAME   VarChar(255) NOT NULL,

	CONSTRAINT PK_VEMPLOYEE_SCH_SEC PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE VEMPLOYEE_SCHDL_PERM
(
	ID        Int     NOT NULL,
	IS_ACTIVE Char(1) NOT NULL,

	CONSTRAINT PK_VEMPLOYEE_SCHDL_PERM PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						VEMPLOYEE_SCHDL_PERM y
					WHERE
						ess.ID = y.ID AND y.IS_ACTIVE = 1
				)
					THEN 1
				ELSE 0
			END as "allowEdit",
			ess.ID
		FROM
			VEMPLOYEE_SCH_SEC ess
	) t1
WHERE
	t1."allowEdit" = 1 AND t1."allowEdit" IS NOT NULL

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	(
		SELECT
			1 as "allowEdit",
			ess.ID
		FROM
			VEMPLOYEE_SCH_SEC ess
	) t1
WHERE
	t1."allowEdit" = 1 AND t1."allowEdit" IS NOT NULL

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE VEMPLOYEE_SCHDL_PERM';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE VEMPLOYEE_SCH_SEC';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

