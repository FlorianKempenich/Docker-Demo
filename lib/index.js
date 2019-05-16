const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
    console.log(`Received request`);
    res.send("Ok")
})


app.listen(port, () => {
    console.log(`I am listening on port ${port}`);
})