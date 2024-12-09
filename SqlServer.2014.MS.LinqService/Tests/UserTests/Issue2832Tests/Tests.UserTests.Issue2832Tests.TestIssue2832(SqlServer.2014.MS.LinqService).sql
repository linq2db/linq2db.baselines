(239912) SELECT 
	t239912.Id = t239911.Id
FROM [DctSetpointtype(239911)] as t239911 (spt)
		LEFT JOIN (
			[VWellTree(239914)] as t239914 (t2)
				INNER JOIN [DctOu(239916)] as t239916 (tp2) ON ({t239914.ShopId?}? = {t239916.Id})
				LEFT JOIN [UacUsersDatagroup(239919)] as t239919 (cudg) ON ({t239916.Id} = {t239919.DatagroupId} AND {t239919.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239924)] as t239924 (oudg) ON ({t239916.ParentId?}? = {t239924.DatagroupId} AND {t239924.UserId} = 150 AND {t239924.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239944)] as t239944 (d) ON ({t239914.WellId?}? = {t239944.WellId})
		)  ON ({t239944.SetpointtypeId} = {t239911.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239919.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239924.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
