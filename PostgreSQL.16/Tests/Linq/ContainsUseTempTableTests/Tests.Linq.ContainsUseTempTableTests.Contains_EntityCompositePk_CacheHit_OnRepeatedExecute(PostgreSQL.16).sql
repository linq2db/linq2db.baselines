-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_7473321a7985"
(
	"K1"   Int  NOT NULL,
	"K2"   text NOT NULL,
	"Data" text     NULL,

	CONSTRAINT "PK_T_7473321a7985" PRIMARY KEY ("K1", "K2")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "T_7473321a7985"
(
	"K1",
	"K2",
	"Data"
)
VALUES
(1,'k1','data1'),
(2,'k2','data2'),
(3,'k3','data3'),
(4,'k4','data4'),
(5,'k5','data5'),
(6,'k6','data6'),
(7,'k7','data7'),
(8,'k8','data8'),
(9,'k9','data9'),
(10,'k10','data10')

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	r."K1",
	r."K2",
	r."Data"
FROM
	"ContainsTempTableComposite" r
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"T_7473321a7985" t1
		WHERE
			r."K1" = t1."K1" AND r."K2" = t1."K2"
	)
ORDER BY
	r."K1"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_7473321a7985"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TEMPORARY TABLE "T_7473321a7985"
(
	"K1"   Int  NOT NULL,
	"K2"   text NOT NULL,
	"Data" text     NULL,

	CONSTRAINT "PK_T_7473321a7985" PRIMARY KEY ("K1", "K2")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "T_7473321a7985"
(
	"K1",
	"K2",
	"Data"
)
VALUES
(1,'k1','data1'),
(2,'k2','data2'),
(3,'k3','data3'),
(4,'k4','data4'),
(5,'k5','data5'),
(6,'k6','data6'),
(7,'k7','data7'),
(8,'k8','data8'),
(9,'k9','data9'),
(10,'k10','data10')

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	r."K1",
	r."K2",
	r."Data"
FROM
	"ContainsTempTableComposite" r
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"T_7473321a7985" t1
		WHERE
			r."K1" = t1."K1" AND r."K2" = t1."K2"
	)
ORDER BY
	r."K1"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T_7473321a7985"

