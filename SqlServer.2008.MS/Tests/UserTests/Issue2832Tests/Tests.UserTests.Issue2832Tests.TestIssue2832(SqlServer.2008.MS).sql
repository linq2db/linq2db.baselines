(239795) SELECT 
	t239795.Id = t239794.Id
FROM [DctSetpointtype(239794)] as t239794 (spt)
		LEFT JOIN (
			[VWellTree(239797)] as t239797 (t2)
				INNER JOIN [DctOu(239799)] as t239799 (tp2) ON ({t239797.ShopId?}? = {t239799.Id})
				LEFT JOIN [UacUsersDatagroup(239802)] as t239802 (cudg) ON ({t239799.Id} = {t239802.DatagroupId} AND {t239802.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239807)] as t239807 (oudg) ON ({t239799.ParentId?}? = {t239807.DatagroupId} AND {t239807.UserId} = 150 AND {t239807.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239827)] as t239827 (d) ON ({t239797.WellId?}? = {t239827.WellId})
		)  ON ({t239827.SetpointtypeId} = {t239794.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239802.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t239807.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
