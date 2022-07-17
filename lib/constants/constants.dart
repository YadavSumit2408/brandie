const charactersGraphQL="""query {
        characters(page: 2,  filter: { name: "rick"}) {
        results {
        id
        name
        image
        status
           }
          }
        }""";