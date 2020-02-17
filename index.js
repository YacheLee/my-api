const express = require('express')
const app = express()
const port = 3000

app.get('/api/hello', (req, res) => res.json({msg: "msg"}))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
