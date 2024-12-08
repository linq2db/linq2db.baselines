(102944) SELECT 
	t102944.Id = t102943.Id
FROM [DctSetpointtype(102943)] as t102943 (spt)
		LEFT JOIN (
			[VWellTree(102946)] as t102946 (t2)
				INNER JOIN [DctOu(102948)] as t102948 (tp2) ON ({t102946.ShopId?}? = {t102948.Id})
				LEFT JOIN [UacUsersDatagroup(102951)] as t102951 (cudg) ON ({t102948.Id} = {t102951.DatagroupId} AND {t102951.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102956)] as t102956 (oudg) ON ({t102948.ParentId?}? = {t102956.DatagroupId} AND {t102956.UserId} = 150 AND {t102956.Inheritablepermission} > 0)
				INNER JOIN [Deviation(102976)] as t102976 (d) ON ({t102946.WellId?}? = {t102976.WellId})
		)  ON ({t102976.SetpointtypeId} = {t102943.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102951.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102956.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
