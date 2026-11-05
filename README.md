# reservepay-js

JS clients to allow usage of the Reservepay APIs - [Merchant](https://developer.reservepay.com/api/merchants), [SDK](https://developer.reservepay.com/api/sdk)
, and [Terminal](https://developer.reservepay.com/api/terminals).

The clients (found in `src/clients/`) were generated using the [WebFunction CLI tool](https://github.com/webfunction-protocol/webfunction-cli).

## Usage

Each import provides an async `createClient` function which will return a fully configured client, ready to access the associated API.

```js
import { Merchant } from "reservepay-js"

const merchantClient = Merchant.createClient({
	bearerAuth: "MY_API_KEY"
})

const availableApiVersions = await merchantClient.availableApiVersions()
````

