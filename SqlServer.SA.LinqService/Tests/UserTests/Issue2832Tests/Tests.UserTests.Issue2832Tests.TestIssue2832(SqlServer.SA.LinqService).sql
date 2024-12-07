(488472) SELECT 
	t488472.Id = t488471.Id
FROM [DctSetpointtype(488471)] as t488471 (spt)
		LEFT JOIN (
			[VWellTree(488474)] as t488474 (t2)
				INNER JOIN [DctOu(488476)] as t488476 (tp2) ON ({t488474.ShopId?}? = {t488476.Id})
				LEFT JOIN [UacUsersDatagroup(488479)] as t488479 (cudg) ON ({t488476.Id} = {t488479.DatagroupId} AND {t488479.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(488484)] as t488484 (oudg) ON ({t488476.ParentId?}? = {t488484.DatagroupId} AND {t488484.UserId} = 150 AND {t488484.Inheritablepermission} > 0)
				INNER JOIN [Deviation(488504)] as t488504 (d) ON ({t488474.WellId?}? = {t488504.WellId})
		)  ON ({t488504.SetpointtypeId} = {t488471.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t488479.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t488484.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
