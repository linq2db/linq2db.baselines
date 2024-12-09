(94944) SELECT 
	t94944.Id = t94943.Id
FROM [DctSetpointtype(94943)] as t94943 (spt)
		LEFT JOIN (
			[VWellTree(94946)] as t94946 (t2)
				INNER JOIN [DctOu(94948)] as t94948 (tp2) ON ({t94946.ShopId?}? = {t94948.Id})
				LEFT JOIN [UacUsersDatagroup(94951)] as t94951 (cudg) ON ({t94948.Id} = {t94951.DatagroupId} AND {t94951.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(94956)] as t94956 (oudg) ON ({t94948.ParentId?}? = {t94956.DatagroupId} AND {t94956.UserId} = 150 AND {t94956.Inheritablepermission} > 0)
				INNER JOIN [Deviation(94976)] as t94976 (d) ON ({t94946.WellId?}? = {t94976.WellId})
		)  ON ({t94976.SetpointtypeId} = {t94943.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t94951.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t94956.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
