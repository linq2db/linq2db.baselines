BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `O1`
(
	`DocEntry`    INT          NOT NULL,
	`BplId`       INT          NOT NULL,
	`ChaveAcesso` VARCHAR(255)     NULL,
	`DocStatus`   VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `O2`
(
	`DocEntry`    INT          NOT NULL,
	`BplId`       INT          NOT NULL,
	`ChaveAcesso` VARCHAR(255)     NULL,
	`DocStatus`   VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `O3`
(
	`DocEntry`    INT          NOT NULL,
	`BplId`       INT          NOT NULL,
	`ChaveAcesso` VARCHAR(255)     NULL,
	`DocStatus`   VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`t1`.`NumeroInterno`, 
	`t1`.`StatusValor`, 
	`t1`.`DescricaoStatus`
FROM
	( 
		SELECT 
			`doSap`.`DocEntry` as `NumeroInterno`, 
			CASE
				WHEN `doSap`.`DocStatus` = 'O'
					THEN 'Aberto'
				ELSE 'Fechado'
			END as `StatusValor`, 
			'Manual/Externo' as `DescricaoStatus`
		FROM
			`O1` `doSap`
		UNION
		SELECT 
			`doSap_1`.`DocEntry` as `NumeroInterno`, 
			CASE
				WHEN `doSap_1`.`DocStatus` = 'O'
					THEN 'Aberto'
				ELSE 'Fechado'
			END as `StatusValor`, 
			'Manual/Externo' as `DescricaoStatus`
		FROM
			`O2` `doSap_1`
	) `t1`
UNION
SELECT 
	`doSap_2`.`DocEntry`, 
	CASE
		WHEN `doSap_2`.`DocStatus` = 'O'
			THEN 'Aberto'
		ELSE 'Fechado'
	END, 
	'Manual/Externo'
FROM
	`O3` `doSap_2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `O3`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `O2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `O1`

