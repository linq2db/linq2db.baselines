(218622) SELECT 
	t218622.Id = t218621.Id
FROM [DctSetpointtype(218621)] as t218621 (spt)
		LEFT JOIN (
			[VWellTree(218624)] as t218624 (t2)
				INNER JOIN [DctOu(218626)] as t218626 (tp2) ON ({t218624.ShopId?}? = {t218626.Id})
				LEFT JOIN [UacUsersDatagroup(218629)] as t218629 (cudg) ON ({t218626.Id} = {t218629.DatagroupId} AND {t218629.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(218634)] as t218634 (oudg) ON ({t218626.ParentId?}? = {t218634.DatagroupId} AND {t218634.UserId} = 150 AND {t218634.Inheritablepermission} > 0)
				INNER JOIN [Deviation(218654)] as t218654 (d) ON ({t218624.WellId?}? = {t218654.WellId})
		)  ON ({t218654.SetpointtypeId} = {t218621.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t218629.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t218634.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
