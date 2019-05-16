const fs = require('fs')
const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
    const filename = req.query['filename']
    const contents = req.query['contents']
    console.log(`Received request`);
    console.log(`Writing to ./specialdir/${filename}`);
    fs.writeFileSync(`./specialdir/${filename}`, contents)
    res.send("Ok - Modified")
})

app.get('/readspecialdir', (req, res) => {
    const testFolder = './specialdir/';

    fs.readdir(testFolder, (err, files) => {
        files.forEach(file => {
            console.log(file);
        });
    });
    res.send('ok')
})


app.listen(port, () => {
    console.log(`I am listening on port ${port}`);
})