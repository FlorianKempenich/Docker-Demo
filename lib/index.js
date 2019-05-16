const fs = require('fs')
const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
    console.log(`Received request`);
    fs.writeFileSync('./hello', 'I am content of the \'hello\' file')
    res.send("Ok - Modified")
})


app.listen(port, () => {
    console.log(`I am listening on port ${port}`);
})