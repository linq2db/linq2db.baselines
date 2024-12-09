(239791) SELECT 
	t239791.Id = t239790.Id
FROM [DctSetpointtype(239790)] as t239790 (spt)
		LEFT JOIN (
			[VWellTree(239793)] as t239793 (t2)
				INNER JOIN [DctOu(239795)] as t239795 (tp2) ON ({t239793.ShopId?}? = {t239795.Id})
				LEFT JOIN [UacUsersDatagroup(239798)] as t239798 (cudg) ON ({t239795.Id} = {t239798.DatagroupId} AND {t239798.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239803)] as t239803 (oudg) ON ({t239795.ParentId?}? = {t239803.DatagroupId} AND {t239803.UserId} = 150 AND {t239803.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239823)] as t239823 (d) ON ({t239793.WellId?}? = {t239823.WellId})
		)  ON ({t239823.SetpointtypeId} = {t239790.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239798.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t239803.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
