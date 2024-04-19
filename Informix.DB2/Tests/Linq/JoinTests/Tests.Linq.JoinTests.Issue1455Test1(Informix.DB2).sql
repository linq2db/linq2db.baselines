BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Alert

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Alert
(
	AlertKey     NVarChar(255)             NOT NULL,
	AlertCode    NVarChar(255)             NOT NULL,
	CreationDate datetime year to fraction NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS AuditAlert

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS AuditAlert
(
	AlertKey        NVarChar(255)             NOT NULL,
	AlertCode       NVarChar(255)             NOT NULL,
	CreationDate    datetime year to fraction NOT NULL,
	TransactionDate datetime year to fraction     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Trade

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Trade
(
	DealId       Int           NOT NULL,
	ParcelId     Int           NOT NULL,
	CounterParty NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Nomin

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Nomin
(
	CargoId              Int           NOT NULL,
	DeliveryId           Int           NOT NULL,
	DeliveryCounterParty NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Flat

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Flat
(
	AlertKey             NVarChar(255)                 NULL,
	AlertCode            NVarChar(255)                 NULL,
	CargoId              Int                           NULL,
	DeliveryId           Int                           NULL,
	DeliveryCounterParty NVarChar(255)                 NULL,
	DealId               Int                           NULL,
	ParcelId             Int                           NULL,
	CounterParty         NVarChar(255)                 NULL,
	TransactionDate      datetime year to fraction     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	al_group_3.AlertKey,
	al_group_3.AlertCode,
	t2.LastUpdate_1,
	t2.CargoId,
	t2.DeliveryId,
	t2.DeliveryCounterParty,
	t2.DealId,
	t2.ParcelId,
	t2.CounterParty,
	t2.LastUpdate
FROM
	(
		SELECT
			al_group_1.AlertKey,
			al_group_1.AlertCode,
			al_group_1.CreationDate
		FROM
			(
				SELECT
					al_group.AlertKey,
					al_group.AlertCode,
					al_group.CreationDate
				FROM
					Alert al_group
						LEFT JOIN AuditAlert au ON au.AlertKey = al_group.AlertKey AND au.AlertCode = au.AlertCode
				GROUP BY
					al_group.AlertKey,
					al_group.AlertCode,
					al_group.CreationDate
			) al_group_1
				LEFT JOIN (
					SELECT
						trade_1.CounterParty,
						To_Char(trade_1.DealId) as c1
					FROM
						Trade trade_1
				) trade_2 ON al_group_1.AlertKey = trade_2.c1
				LEFT JOIN (
					SELECT
						nomin_1.DeliveryCounterParty,
						To_Char(nomin_1.CargoId) as c1
					FROM
						Nomin nomin_1
				) nomin_2 ON al_group_1.AlertKey = nomin_2.c1
		WHERE
			(nomin_2.DeliveryCounterParty LIKE '%C%' ESCAPE '~' OR trade_2.CounterParty LIKE '%C%' ESCAPE '~' OR al_group_1.AlertCode LIKE '%C%' ESCAPE '~')
		GROUP BY
			al_group_1.AlertKey,
			al_group_1.AlertCode,
			al_group_1.CreationDate
	) al_group_3
		LEFT JOIN (
			SELECT
				nomin_4.CargoId,
				nomin_4.DeliveryId,
				nomin_4.DeliveryCounterParty,
				trade_4.DealId,
				trade_4.ParcelId,
				trade_4.CounterParty,
				Nvl(t1.MAX_1, t1.CreationDate) as LastUpdate,
				Nvl(t1.MAX_1, t1.CreationDate) as LastUpdate_1,
				ROW_NUMBER() OVER (PARTITION BY t1.AlertKey, t1.AlertCode, t1.CreationDate ORDER BY t1.AlertKey) as rn,
				t1.AlertKey,
				t1.AlertCode,
				t1.CreationDate
			FROM
				(
					SELECT
						al_group_2.AlertKey,
						al_group_2.AlertCode,
						al_group_2.CreationDate,
						MAX(au_1.TransactionDate) as MAX_1
					FROM
						Alert al_group_2
							LEFT JOIN AuditAlert au_1 ON au_1.AlertKey = al_group_2.AlertKey AND au_1.AlertCode = au_1.AlertCode
					GROUP BY
						al_group_2.AlertKey,
						al_group_2.AlertCode,
						al_group_2.CreationDate
				) t1
					LEFT JOIN (
						SELECT
							trade_3.CounterParty,
							trade_3.DealId,
							trade_3.ParcelId,
							To_Char(trade_3.DealId) as c1
						FROM
							Trade trade_3
					) trade_4 ON t1.AlertKey = trade_4.c1
					LEFT JOIN (
						SELECT
							nomin_3.DeliveryCounterParty,
							nomin_3.CargoId,
							nomin_3.DeliveryId,
							To_Char(nomin_3.CargoId) as c1
						FROM
							Nomin nomin_3
					) nomin_4 ON t1.AlertKey = nomin_4.c1
			WHERE
				(nomin_4.DeliveryCounterParty LIKE '%C%' ESCAPE '~' OR trade_4.CounterParty LIKE '%C%' ESCAPE '~' OR t1.AlertCode LIKE '%C%' ESCAPE '~')
		) t2 ON al_group_3.AlertKey = t2.AlertKey AND al_group_3.AlertCode = t2.AlertCode AND al_group_3.CreationDate = t2.CreationDate AND t2.rn <= 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Flat

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Nomin

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Trade

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS AuditAlert

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Alert

