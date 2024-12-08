(160448) SELECT 
	t160448.Id = t160447.Id
FROM [DctSetpointtype(160447)] as t160447 (spt)
		LEFT JOIN (
			[VWellTree(160450)] as t160450 (t2)
				INNER JOIN [DctOu(160452)] as t160452 (tp2) ON ({t160450.ShopId?}? = {t160452.Id})
				LEFT JOIN [UacUsersDatagroup(160455)] as t160455 (cudg) ON ({t160452.Id} = {t160455.DatagroupId} AND {t160455.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(160460)] as t160460 (oudg) ON ({t160452.ParentId?}? = {t160460.DatagroupId} AND {t160460.UserId} = 150 AND {t160460.Inheritablepermission} > 0)
				INNER JOIN [Deviation(160480)] as t160480 (d) ON ({t160450.WellId?}? = {t160480.WellId})
		)  ON ({t160480.SetpointtypeId} = {t160447.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t160455.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t160460.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
