(244714) SELECT 
	t244714.Id = t244713.Id
FROM [DctSetpointtype(244713)] as t244713 (spt)
		LEFT JOIN (
			[VWellTree(244716)] as t244716 (t2)
				INNER JOIN [DctOu(244718)] as t244718 (tp2) ON ({t244716.ShopId?}? = {t244718.Id})
				LEFT JOIN [UacUsersDatagroup(244721)] as t244721 (cudg) ON ({t244718.Id} = {t244721.DatagroupId} AND {t244721.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244726)] as t244726 (oudg) ON ({t244718.ParentId?}? = {t244726.DatagroupId} AND {t244726.UserId} = 150 AND {t244726.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244746)] as t244746 (d) ON ({t244716.WellId?}? = {t244746.WellId})
		)  ON ({t244746.SetpointtypeId} = {t244713.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244721.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t244726.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
