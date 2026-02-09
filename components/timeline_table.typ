
#figure(
  align(center)[
    #set text(size: 10pt)

    #let i = 1

    #let task-row(..weeks) = (
      ..weeks
        .pos()
        .map(w => {
          if w == [x] or w == "x" {
            table.cell(fill: rgb("#fede6a"))[] // Change color here (e.g., blue, green)
          } else {
            []
          }
        }),
    )

    #table(
      // 4 Months; 16 weeks
      columns: (30%, ..(4.375%,) * 16),
      table.header(
        table.cell(align: center, rowspan: 2)[#strong[Tasks]],
        table.cell(align: center, colspan: 16)[#strong[Weeks]],
        ..range(1, 17).map(i => table.cell(align: center)[#strong[#i]]),
      ),

      // Tasks
      table.cell(align: left)[Requirement Analysis],
      ..task-row([x], [x], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ]),

      table.cell(align: left)[Setup Project],
      ..task-row([ ], [ ], [x], [x], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ]),

      table.cell(align: left)[Development Phase],
      ..task-row([ ], [ ], [ ], [ ], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x]),

      table.cell(align: left)[Testing],
      ..task-row([ ], [ ], [ ], [ ], [ ], [ ], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x]),

      table.cell(align: left)[Bug Fixes and UAT],
      ..task-row([ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [x], [x], [x], [x], [x]),

      table.cell(align: left)[Documentation],
      ..task-row([x], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x], [x]),
    )
  ],
  caption: "Activities Timeline",
)
