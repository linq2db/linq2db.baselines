(160422) SELECT 
	t160422.Id = t160421.Id
FROM [DctSetpointtype(160421)] as t160421 (spt)
		LEFT JOIN (
			[VWellTree(160424)] as t160424 (t2)
				INNER JOIN [DctOu(160426)] as t160426 (tp2) ON ({t160424.ShopId?}? = {t160426.Id})
				LEFT JOIN [UacUsersDatagroup(160429)] as t160429 (cudg) ON ({t160426.Id} = {t160429.DatagroupId} AND {t160429.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(160434)] as t160434 (oudg) ON ({t160426.ParentId?}? = {t160434.DatagroupId} AND {t160434.UserId} = 150 AND {t160434.Inheritablepermission} > 0)
				INNER JOIN [Deviation(160454)] as t160454 (d) ON ({t160424.WellId?}? = {t160454.WellId})
		)  ON ({t160454.SetpointtypeId} = {t160421.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t160429.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t160434.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
