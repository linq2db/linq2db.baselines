BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2815Table1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue2815Table1
(
	SRC_BIC       Int NOT NULL,
	DES_BIC       Int NOT NULL,
	IDF           Int NOT NULL,
	TREA_CENT     Int NOT NULL,
	NOT_HANDLED   Int NOT NULL,
	TRANS_CHANNEL Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2815Table2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue2815Table2
(
	ISO  Int     NOT NULL,
	SEPA BOOLEAN NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2815Table3

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue2815Table3
(
	TreasuryCenter Int NOT NULL,
	BIC            Int NOT NULL,
	Sepa           Int NOT NULL,
	Trans_Channel  Int NOT NULL,
	Idf            Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2815Table3

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2815Table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2815Table1

