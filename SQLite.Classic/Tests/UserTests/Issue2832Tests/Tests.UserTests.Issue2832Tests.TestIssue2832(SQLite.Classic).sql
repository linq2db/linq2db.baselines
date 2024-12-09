(700445) SELECT 
	t700445.Id = t700444.Id
FROM [DctSetpointtype(700444)] as t700444 (spt)
		LEFT JOIN (
			[VWellTree(700447)] as t700447 (t2)
				INNER JOIN [DctOu(700449)] as t700449 (tp2) ON ({t700447.ShopId?}? = {t700449.Id})
				LEFT JOIN [UacUsersDatagroup(700452)] as t700452 (cudg) ON ({t700449.Id} = {t700452.DatagroupId} AND {t700452.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(700457)] as t700457 (oudg) ON ({t700449.ParentId?}? = {t700457.DatagroupId} AND {t700457.UserId} = 150 AND {t700457.Inheritablepermission} > 0)
				INNER JOIN [Deviation(700477)] as t700477 (d) ON ({t700447.WellId?}? = {t700477.WellId})
		)  ON ({t700477.SetpointtypeId} = {t700444.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t700452.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t700457.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
