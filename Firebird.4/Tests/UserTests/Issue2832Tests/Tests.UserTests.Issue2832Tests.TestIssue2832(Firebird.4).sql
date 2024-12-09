(102954) SELECT 
	t102954.Id = t102953.Id
FROM [DctSetpointtype(102953)] as t102953 (spt)
		LEFT JOIN (
			[VWellTree(102956)] as t102956 (t2)
				INNER JOIN [DctOu(102958)] as t102958 (tp2) ON ({t102956.ShopId?}? = {t102958.Id})
				LEFT JOIN [UacUsersDatagroup(102961)] as t102961 (cudg) ON ({t102958.Id} = {t102961.DatagroupId} AND {t102961.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102966)] as t102966 (oudg) ON ({t102958.ParentId?}? = {t102966.DatagroupId} AND {t102966.UserId} = 150 AND {t102966.Inheritablepermission} > 0)
				INNER JOIN [Deviation(102986)] as t102986 (d) ON ({t102956.WellId?}? = {t102986.WellId})
		)  ON ({t102986.SetpointtypeId} = {t102953.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102961.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102966.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
