(102956) SELECT 
	t102956.Id = t102955.Id
FROM [DctSetpointtype(102955)] as t102955 (spt)
		LEFT JOIN (
			[VWellTree(102958)] as t102958 (t2)
				INNER JOIN [DctOu(102960)] as t102960 (tp2) ON ({t102958.ShopId?}? = {t102960.Id})
				LEFT JOIN [UacUsersDatagroup(102963)] as t102963 (cudg) ON ({t102960.Id} = {t102963.DatagroupId} AND {t102963.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102968)] as t102968 (oudg) ON ({t102960.ParentId?}? = {t102968.DatagroupId} AND {t102968.UserId} = 150 AND {t102968.Inheritablepermission} > 0)
				INNER JOIN [Deviation(102988)] as t102988 (d) ON ({t102958.WellId?}? = {t102988.WellId})
		)  ON ({t102988.SetpointtypeId} = {t102955.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102963.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102968.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
