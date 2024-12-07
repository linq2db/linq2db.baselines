(106524) SELECT 
	t106524.Id = t106523.Id
FROM [DctSetpointtype(106523)] as t106523 (spt)
		LEFT JOIN (
			[VWellTree(106526)] as t106526 (t2)
				INNER JOIN [DctOu(106528)] as t106528 (tp2) ON ({t106526.ShopId?}? = {t106528.Id})
				LEFT JOIN [UacUsersDatagroup(106531)] as t106531 (cudg) ON ({t106528.Id} = {t106531.DatagroupId} AND {t106531.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106536)] as t106536 (oudg) ON ({t106528.ParentId?}? = {t106536.DatagroupId} AND {t106536.UserId} = 150 AND {t106536.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106556)] as t106556 (d) ON ({t106526.WellId?}? = {t106556.WellId})
		)  ON ({t106556.SetpointtypeId} = {t106523.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106531.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106536.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
