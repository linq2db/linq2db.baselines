(700915) SELECT 
	t700915.Id = t700914.Id
FROM [DctSetpointtype(700914)] as t700914 (spt)
		LEFT JOIN (
			[VWellTree(700917)] as t700917 (t2)
				INNER JOIN [DctOu(700919)] as t700919 (tp2) ON ({t700917.ShopId?}? = {t700919.Id})
				LEFT JOIN [UacUsersDatagroup(700922)] as t700922 (cudg) ON ({t700919.Id} = {t700922.DatagroupId} AND {t700922.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(700927)] as t700927 (oudg) ON ({t700919.ParentId?}? = {t700927.DatagroupId} AND {t700927.UserId} = 150 AND {t700927.Inheritablepermission} > 0)
				INNER JOIN [Deviation(700947)] as t700947 (d) ON ({t700917.WellId?}? = {t700947.WellId})
		)  ON ({t700947.SetpointtypeId} = {t700914.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t700922.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t700927.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
